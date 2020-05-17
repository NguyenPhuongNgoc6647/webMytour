<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="content-admin.aspx.cs" Inherits="Mytour.folder_html.content_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../folder-css/content-admin.css" rel="stylesheet" />
    <div class="content-admin">
        <div class="dashboard-ecommerce">
            <div class="container-fluid dashboard-content ">
                <!-- ============================================================== -->
                <!-- pageheader  -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Xin chào Admin!</h2>
                            <p class="pageheader-text">Nulla euismod urna eros, sit amet scelerisque torton lectus vel mauris facilisis faucibus at enim quis massa lobortis rutrum.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Bảng điều khiển</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Quản lý Tour</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="gridview-tour">
                    <asp:GridView runat="server" ID="gridviewTour" CssClass="grvTour">
                        <Columns>
                            <asp:BoundField HeaderText="Mã Tour" DataField="ma_tour"/>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label runat="server" Text="Tên Tour"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("ten_tour").ToString() %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label runat="server" Text="Ngày khởi hành"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("ngay_kh").ToString() %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label runat="server" Text="Điểm khởi hành"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("diem_kh").ToString() %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label runat="server" Text="Giới thiệu tour"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("gioi_thieu_tour").ToString() %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label runat="server" Text="Thời gian"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("thoi_gian").ToString() %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label runat="server" Text="Lịch trình"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("lich_trinh").ToString() %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label runat="server" Text="Khuyến mãi"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("khuyen_mai_tour").ToString() %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label runat="server" Text="Giá tour"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("gia_tour").ToString() %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label runat="server" Text="Đánh giá tour"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("danh_gia_tour").ToString() %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label runat="server" Text="Lượt chia sẻ"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("sl_chia_se").ToString() %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label runat="server" Text="Lượt thích"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("sl_thich").ToString() %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                           <%-- <asp:BoundField HeaderText="Tên Tour" DataField="ten_tour"/>
                            <asp:BoundField HeaderText="Ngày khởi hành" DataField="ngay_kh"/>
                             <asp:BoundField HeaderText="Điểm khởi hành" DataField="diem_kh"/>
                            <asp:BoundField HeaderText="Giới thiệu tour" DataField="gioi_thieu_tour"/>
                            <asp:BoundField HeaderText="Thời gian" DataField="thoi_gian"/>
                             <asp:BoundField HeaderText="Lịch trình" DataField="lich_trinh"/>
                            <asp:BoundField HeaderText="Khuyến mãi" DataField="khuyen_mai_tour"/>
                            <asp:BoundField HeaderText="Giá tour" DataField="gia_tour"/>
                            <asp:BoundField HeaderText="Đánh giá tour" DataField="danh_gia_tour"/>
                             <asp:BoundField HeaderText="Lượt chia sẻ" DataField="sl_chia_se"/>
                            <asp:BoundField HeaderText="Lượt thích" DataField="sl_thich"/>--%>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
