from setuptools import setup, find_packages

with open("README.md", "r") as f:
    page_description = f.read()

with open("requirements.txt") as f:
    requirements = f.read().splitlines()

setup(
    name="image_processing",
    version="0.0.1",
    author="Karina",
    author_email="name@email.com",
    description="This package is used to read, processing and plot images.",
    long_description=page_description,
    long_description_content_type="text/markdown",
    url="my_github_",
    install_requires=requirements,
    packages=find_packages(),
    python_requires=">=3.8",
)