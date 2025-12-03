# Python Docker Sandbox

This repository is a fast starting point to run Python locally using Docker.  
It is intended for learning, testing, and experimenting with Python files in an isolated environment.

---

## Getting Started

### 1. Start the container for learning/testing

```bash
docker-compose up --build -d
```

### 2. Access the container to test files

```bash
docker-compose exec python-app bash
```

Inside the container:

```bash
python file1.py
```

### 3. Python REPL (interactive)

```bash
python
```

Example inside REPL:

```python
>>> import file2
>>> file2.some_function()
```

### 4. Run a file directly without opening bash

```bash
docker-compose run --rm python-app python file1.py
```

---

## Notes

- All files in `app/` are mounted as a volume, so changes appear instantly in the container  
- Stop the container with:

```bash
docker-compose down
```

- Optional cleanup:

```bash
docker system prune -a
```

---

## Adding Dependencies

Add packages to `requirements.txt`, then rebuild:

```bash
docker-compose up --build -d
```

