import { Routes } from '@angular/router';
import { HeropageComponent } from './pages/heropage/heropage.component';
import { DashboardComponent } from './pages/dashboard/dashboard.component';
import { NavbarComponent } from './common/navbar/navbar.component';
import { AddComponent } from './pages/add/add.component';
import { FindComponent } from './pages/find/find.component';
import { ListingComponent } from './pages/listing/listing.component';
import { AdminComponent } from './pages/admin/admin.component';
import { AdminAddComponent } from './pages/admin-add/admin-add.component';
import { AdminManageComponent } from './pages/admin-manage/admin-manage.component';
import { AgentComponent } from './pages/agent/agent.component';
import { AgentAddComponent } from './pages/agent-add/agent-add.component';
import { AgentManageComponent } from './pages/agent-manage/agent-manage.component';

export const routes: Routes = [
    {
        path: "",
        component: HeropageComponent
    },
    {
        path: "dashboard",
        component: DashboardComponent
    },
    {
        path: "navbar",
        component: NavbarComponent
    },
    {
        path: "add",
        component: AddComponent
    },
    {
        path: "find",
        component: FindComponent
    },
    {
        path: "listing",
        component: ListingComponent
    },
    {
        path:"admin-page",
        component: AdminComponent
    },
    {
        path:"add-admin",
        component: AdminAddComponent
    },
    {
        path: "manage-admin",
        component: AdminManageComponent
    },
    {
        path: "agent",
        component: AgentComponent
    },
    {
        path: "add-agent",
        component: AgentAddComponent
    },
    {
        path: "manage-agent",
        component: AgentManageComponent
    }
];
