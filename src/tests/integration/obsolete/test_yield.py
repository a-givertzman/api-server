def gen():
    print('before yield')
    yield
    print('after yield')


g = gen()
next(g)
for i in range(3):
    print(f'main code {i}')
next(g)