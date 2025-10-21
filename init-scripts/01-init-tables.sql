-- init-scripts/01-init-tables.sql
CREATE TABLE IF NOT EXISTS student (
    id_student SERIAL PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    year_of_admission INTEGER NOT NULL,
    form_of_study VARCHAR(20),
    education_level VARCHAR(50),
    course_code VARCHAR(20),
    group_number VARCHAR(10),
    number_phone VARCHAR(20),
    email VARCHAR(120) UNIQUE
);

CREATE TABLE IF NOT EXISTS course (
    id_course VARCHAR(50) PRIMARY KEY,
    name_course VARCHAR(100) NOT NULL,
    total_hours INTEGER NOT NULL,
    number_year VARCHAR(50) NOT NULL,
    description TEXT
);

CREATE TABLE IF NOT EXISTS study_plan (
    id_plan VARCHAR(50) PRIMARY KEY,
    id_course VARCHAR(50) REFERENCES course(id_course),
    discipline VARCHAR(100) NOT NULL,
    semester INTEGER NOT NULL,
    credit_of_discipline INTEGER NOT NULL,
    exam_format VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS student_progress_log (
    id_log SERIAL PRIMARY KEY,
    semester INTEGER,
    student_id INTEGER REFERENCES student(id_student),
    course_id VARCHAR(50) REFERENCES course(id_course),
    grade VARCHAR(20)
);
