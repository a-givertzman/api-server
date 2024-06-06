#[cfg(test)]

mod concurrency {
    use futures::future;
    use log::{warn, info, debug};
    use rand::Rng;
    use std::{future::IntoFuture, io, sync::Once, task, time::{Duration, Instant}};
    use testing::stuff::max_test_duration::TestDuration;
    use debugging::session::debug_session::{DebugSession, LogLevel, Backtrace};
    ///
    ///
    static INIT: Once = Once::new();
    ///
    /// once called initialisation
    fn init_once() {
        INIT.call_once(|| {
            // implement your initialisation code to be called only once for current test file
        })
    }
    ///
    /// returns:
    ///  - ...
    fn init_each() -> () {}
    ///
    /// Testing rust async functionality
    // #[test]
    #[async_std::test]
    async fn concurrency() {
        DebugSession::init(LogLevel::Debug, Backtrace::Short);
        init_once();
        init_each();
        println!();
        let self_id = "concurrency";
        println!("\n{}", self_id);
        let test_duration = TestDuration::new(self_id, Duration::from_secs(10));
        test_duration.run().unwrap();
        let queries = vec![
            "1 query",
            "2 query",
            "3 query",
            "4 query",
        ];
        let mut tasks = vec![];
        for query in queries {
            let future = fetch(self_id, query);
            tasks.push(future);
        }
        let mut tasks: Vec<_> = tasks.into_iter().map(Box::pin).collect();
        while !tasks.is_empty() {
            let (name, _index, remaining) = futures::future::select_all(tasks).await;
            println!("{} | Task '{}' finished'", self_id, name);
            tasks = remaining;
        }

        // assert!(result == target, "\nresult: {:?}\ntarget: {:?}", result, target);

        test_duration.exit();
    }
    ///
    /// Unexpected duration executuin
    async fn fetch(self_id: &str, value: &str) -> String {
        let rnd = (rand::thread_rng().gen_range(1..100) as f32) / 10.0;
        let secs = 3.0 / rnd;
        let dur = Duration::from_secs_f32(secs);
        println!("{}.fetch | Task '{}' started for '{:?}'", self_id, value, dur);
        let cycle = dur / 100;
        let time = Instant::now();
        while time.elapsed() < dur {
            async_std::task::sleep(cycle).await;
        }
        let elapsed = time.elapsed();
        println!("{}.fetch | Task '{}' finished in '{:?}'", self_id, value, elapsed);
        value.to_owned()
    }
}
