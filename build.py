
from jinja2 import Environment, FileSystemLoader, select_autoescape
import shutil
import glob

env = Environment(
    loader=FileSystemLoader("src"),
    autoescape=select_autoescape()
)

def render(filename):
    print(f"building {filename}")
    template = env.get_template(f"{filename}.jinja")
    with open(f"src/{filename}.html", "w+") as f:
        f.write(template.render())


render("index")
render("past")
render("future")
render("comments")
