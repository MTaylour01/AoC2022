
def converter(path, transform):
    with open(path, 'r') as f:
        content = f.read()
        transformed = transform(content)
        f_new = open(f'{path}_Reformatted', 'x')
        f_new.write(transformed)
        f_new.close()
