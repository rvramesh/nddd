﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="NDDDSample.Web.Views.CargoAdmin.List" %>

<%@ Import Namespace="NDDDSample.Web.Controllers.CargoAdmin" %>
<%@ Import Namespace="NDDDSample.Interfaces.BookingRemoteService.Common.Dto" %>
<asp:Content ID="cargoAdminList" ContentPlaceHolderID="MainContent" runat="server">
    <table border="1" width="600">
        <caption>
            All cargos</caption>
        <thead>
            <tr>
                <td>
                    Tracking ID
                </td>
                <td>
                    Origin
                </td>
                <td>
                    Destination
                </td>
                <td>
                    Routed
                </td>
            </tr>
        </thead>
        <tbody>
            <% foreach (var cargo in ViewData.Model)
                 {%>
            <tr>
                <td>
                    <%=Html.ActionLink(cargo.TrackingId, "Show", "CargoAdmin", new { trackingId = cargo.TrackingId }, null)%>                    
                </td>
                <td>
                    <%=cargo.Origin%>
                </td>
                <td>
                    <%=cargo.FinalDestination%>
                </td>
                <td>
                    <%=cargo.IsMisrouted ? "Misrouted" : cargo.IsRouted ? "Yes" : "No"%>
                </td>
            </tr>
            <%
                 }%>
        </tbody>
    </table>
</asp:Content>
