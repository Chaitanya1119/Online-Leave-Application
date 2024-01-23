
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `leaves` (
  `id` int(11) NOT NULL,
  `eid` int(11) NOT NULL COMMENT 'Employee ID',
  `ename` varchar(255) NOT NULL COMMENT 'Employee''s Username',
  `descr` varchar(255) NOT NULL COMMENT 'Leave Reason',
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(150) NOT NULL,
  `city` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `phone` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `users` (`id`, `fullname`, `name`, `password`, `type`, `email`, `gender`, `city`, `department`, `phone`) VALUES
(1, 'Chaitanya', 'chaithu', '1234', 'admin', 'pavan@gmail.com', 'Male', 'Hyderabad', 'CSE', '9502504293');

ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
