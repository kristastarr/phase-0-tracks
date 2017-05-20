classroom = {
    
    desk_one: {
        student_name: "Ivan",
        age: 6,
        supplies: [
        "crayons",
        "markers",
        "sketchbook",
        "pencils"
        ]
    },
    
    desk_two: {
        student_name: "Oscar",
        age: 5,
        supplies: [
        "pen",
        "notebook",
        "folder"
        ]
    },
    
    desk_three: {
        student_name: "Emma",
        age: 4,
        supplies: [
        "binder",
        "pencil",
        "eraser",
        "glue"
        ]
    }
    
}

p classroom[:desk_one]

p classroom[:desk_two][:age]

p classroom[:desk_three][:supplies][1]
