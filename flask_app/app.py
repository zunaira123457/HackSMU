from flask import Flask, jsonify, render_template, request, redirect
from flask_cors import CORS 

app = Flask(__name__)
CORS(app) 

# Mock task data (you can replace this with data from a file or database)
tasks = [
    {'task': 'Buy ice cream', 'location': 'Braum\'s'},
    {'task': 'Get apples', 'location': 'Kroger'},
    {'task': 'Buy milk', 'location': 'Walmart'},
    {'task': 'Pick up dry cleaning', 'location': 'Cleaners'}
]

@app.route('/')
def index():
    return render_template('index.html', tasks = tasks)

@app.route('/tasks', methods=['GET'])
def get_tasks():
    return jsonify(tasks)

@app.route('/map')
def maps():
    return render_template('maps.html')

@app.route('/routes')
def route():
    return render_template('routes.html')

# @app.route('/tasks', methods=['POST'])
# def add_task():
#     new_task = request.json
#     tasks.append(new_task)
#     return jsonify({'message': 'Task added successfully!'}), 201

# @app.rout('/view-tasks/<int:task_id>')
# def view_tasks(task_id):
#     task 
#     return f"<h1> {post{'task'}} </h1> <p>{post['location']}</p>"

if __name__ == '__main__':
    app.run(debug=True)

