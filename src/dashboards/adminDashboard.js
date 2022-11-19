import React from "react";
import { Stack } from "@mui/material";
import AdminSidebar from "../components/sidebars/adminSidebar";
import NotificationButton from "../components/notificationButton";
import WelcomeBox from "../components/welcomeBox";
import AdminOptions from "../components/options/adminOptions";
import ProfileInformation from "../components/profileInformation";
import LogoutButton from "../components/logout";
import "./adminDashboard.css";
function AdminDashboard({ setAuth }) {
	return (
		<div className="co">
			<Stack direction={"row"}>
				<AdminSidebar />
				<Stack
					direction={"column"}
					sx={{ marginLeft: 2, marginTop: 3 }}>
					<NotificationButton />
					<WelcomeBox />
					<AdminOptions />
				</Stack>

				<Stack direction={"column"}>
					<ProfileInformation />
					<LogoutButton setAuth={setAuth} />
				</Stack>
			</Stack>
		</div>
	);
}
export default AdminDashboard;