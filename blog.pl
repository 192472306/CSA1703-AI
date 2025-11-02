% simple_blog.pl
create_blog(File) :-
    open(File, write, Stream),
    write(Stream, '<html><head><title>My Demo Blog</title></head><body>'),
    write(Stream, '<h1>Welcome to My Blog</h1>'),
    write(Stream, '<p>This blog demonstrates the use of HTML tags.</p>'),
    write(Stream, '<a href="https://www.wordpress.com" target="_blank">Visit WordPress</a>'),
    write(Stream, '</body></html>'),
    close(Stream),
    write('Blog HTML file created successfully!').
