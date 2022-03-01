<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/App_MasterPages/layout.Master"
    CodeBehind="FacebookChatBoxSettings.aspx.cs" Inherits="CanhCam.Web.CustomUI.FacebookChatBoxSettings" %>

<asp:Content ContentPlaceHolderID="mainContent" ID="MPContent" runat="server">
    <portal:BreadcrumbAdmin ID="breadcrumb" runat="server"
        CurrentPageTitle="<%$Resources:ProductResources, ShippingMethodsTitle %>" CurrentPageUrl="~/Product/AdminCP/ShippingMethods.aspx" />
    <div class="admin-content col-md-12">

        <asp:UpdatePanel ID="upButton" UpdateMode="Conditional" runat="server">
            <ContentTemplate>
                <portal:HeadingPanel ID="heading" runat="server">
                    <asp:Button SkinID="UpdateButton" ID="btnUpdate" Text="<%$Resources:Resource, UpdateButton %>"
                        runat="server" />
                    <asp:Button SkinID="DeleteButton" ID="btnDeleteLanguage" Visible="false" OnClick="btnDeleteLanguage_Click" Text="<%$Resources:Resource, DeleteLanguageButton %>" runat="server" CausesValidation="false" />
                </portal:HeadingPanel>
                <portal:NotifyMessage ID="message" runat="server" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <div class="workplace">
            <div class="form-horizontal">
                <asp:UpdatePanel ID="up" runat="server">
                    <ContentTemplate>
                        <telerik:RadTabStrip ID="tabLanguage" OnTabClick="tabLanguage_TabClick"
                            EnableEmbeddedSkins="false" EnableEmbeddedBaseStylesheet="false"
                            CssClass="subtabs" SkinID="SubTabs" Visible="false" SelectedIndex="0" runat="server" />
                        <div class="settingrow form-group">
                            <gb:SiteLabel ID="lblDescription" runat="server" ForControl="edDescription" CssClass="settinglabel control-label col-sm-3" Text="Facebook script" />
                            <div class="col-sm-9">
                                <asp:TextBox runat="server" ID="edDescription" TextMode="MultiLine" Rows="10" />
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
</asp:Content>
