<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TinTuc.aspx.cs" Inherits="TinTuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">

			<div class="row">
				<asp:Panel ID="pnlDetail" runat="server">
				<div class="span9">

					<article class="blog-article">
                        
						<div class="blog-img" style=" width:690px;">
							
                            <asp:Literal ID="ltlImg" runat="server" />
						</div><!--end blog-img-->

						<div class="blog-content">
							<div class="blog-content-title">
								<h1><asp:Literal ID="ltlTitle" runat="server" /></h1>
							</div>
							<div class="clearfix">
								<ul class="unstyled blog-content-date">
									<li class="pull-right"><i class="icon-comments"></i> 15</li>
									<li class="pull-left"><i class="icon-calendar"></i> <asp:Literal ID="ltlPostingDateTime" runat="server" /></li>
								</ul>
							</div>
							<div class="blog-content-entry">
								<asp:Literal ID="ltlContent" runat="server" />
							</div>
						</div><!--end blog-content-->

                        
					</article><!--end article-->

					<div class="user-comments">
						<div class="titleHeader clearfix">
							<h3>Users Comments</h3>
						</div><!--end titleHeader-->

						<ul class="media-list">
							<li class="media">
								<a class="pull-left" href="#">
							      <img class="media-object" src="template/img/64x64.jpg" alt="user-avatar">
							    </a>
							    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="media-body">
							    	<div class="pull-right">
							    		<button class="btn btn-mini" data-tip="tooltip" data-title="Reply" data-placment="top"><i class="icon-refresh"></i></button>
							    		<button class="btn btn-mini"  data-tip="tooltip" data-title="Remove" data-placment="top"><i class="icon-trash"></i></button>
							    	</div>
							        <h4 class="media-heading">
							      	   <a href="#" class="invarseColor">John Doe1</a>
							        </h4>
							        <p>
							      	  consectetur adipiscing eli. Nulla tristique posuere felis vel pretium. Sed sit amet nisi elit. consectetur adipiscing eli. Nulla tristique posuere felis vel pretium. Sed sit amet nisi elit.
							        </p>
							    </div>
							</li>
							<li class="media">
								<a class="pull-left" href="#">
							      <img class="media-object" src="template/img/64x64.jpg" alt="user-avatar">
							    </a>
							    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="media-body">
                                    <div class="pull-right">
                                        <button class="btn btn-mini" data-placment="top" data-tip="tooltip" 
                                            data-title="Reply">
                                            <i class="icon-refresh"></i>
                                        </button>
                                        <button class="btn btn-mini" data-placment="top" data-tip="tooltip" 
                                            data-title="Remove">
                                            <i class="icon-trash"></i>
                                        </button>
                                    </div>
                                    <h4 class="media-heading">
                                        <a class="invarseColor" href="#">John Doe1</a>
                                    </h4>
                                    <p>
                                        consectetur adipiscing eli. Nulla tristique posuere felis vel pretium. Sed sit 
                                        amet nisi elit. consectetur adipiscing eli. Nulla tristique posuere felis vel 
                                        pretium. Sed sit amet nisi elit.
                                    </p>
                                    <div class="media">
                                        <ul>
                                            <li class="media"><a class="pull-left" href="#">
                                                <img alt="user-avatar" class="media-object" src="template/img/64x64.jpg"> </img></a> 
                                                &nbsp;<div class="media-body">
                                                    <div class="pull-right">
                                                        <button class="btn btn-mini" data-placment="top" data-tip="tooltip" 
                                                            data-title="Reply">
                                                            <i class="icon-refresh"></i>
                                                        </button>
                                                        <button class="btn btn-mini" data-placment="top" data-tip="tooltip" 
                                                            data-title="Remove">
                                                            <i class="icon-trash"></i>
                                                        </button>
                                                    </div>
                                                    <h4 class="media-heading">
                                                        <a class="invarseColor" href="#">John Doe1</a>
                                                    </h4>
                                                    <p>
                                                        consectetur adipiscing eli. Nulla tristique posuere felis vel pretium. Sed sit 
                                                        amet nisi elit. consectetur adipiscing eli. Nulla tristique posuere felis vel 
                                                        pretium. Sed sit amet nisi elit.
                                                    </p>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
							</li>
							<li class="media">
								<a class="pull-left" href="#">
							      <img class="media-object" src="template/img/64x64.jpg" alt="user-avatar">
							    </a>
							    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="media-body">
							    	<div class="pull-right">
							    		<button class="btn btn-mini" data-tip="tooltip" data-title="Reply" data-placment="top"><i class="icon-refresh"></i></button>
							    		<button class="btn btn-mini"  data-tip="tooltip" data-title="Remove" data-placment="top"><i class="icon-trash"></i></button>
							    	</div>
							        <h4 class="media-heading">
							      	   <a href="#" class="invarseColor">John Doe1</a>
							        </h4>
							        <p>
							      	  consectetur adipiscing eli. Nulla tristique posuere felis vel pretium. Sed sit amet nisi elit. consectetur adipiscing eli. Nulla tristique posuere felis vel pretium. Sed sit amet nisi elit.
							        </p>
							    </div>
							</li>
						</ul><!--end media-list-->
					</div><!--end user-comments-->

					<div class="make-comment">
						<div class="titleHeader clearfix">
							<h3>Leave Comment</h3>
						</div><!--end titleHeader-->

						<form method="post" action="page">
							<div class="controls controls-row">
							<input type="text" name="" value="" placeholder="Your Name...*" class="span3">
							<input type="text" name="" value="" placeholder="E-Mail...*" class="span3">
							<input type="text" name="" value="" placeholder="URL..." class="span3">
							</div>
							<div class="controls">
							<textarea name="" class="span9" placeholder="Your Message...*"></textarea>
							</div>
							<button type="submit" class="btn btn-primary pull-right">Add Comment</button>
						</form><!--end form-->
					</div><!--end make-comment-->

				</div><!--end span9-->
                </asp:Panel>


                <asp:Panel ID="pnlList" runat="server">
                <div class="span9">
                    <asp:Literal ID="ltlList" runat="server" />
					
                </div> <!--end span9-->
                </asp:Panel>


				<aside class="span3">

					<div class="blog-search">
						<form class="form-search">
						  <div class="input-append">
						    <input type="text" class="span2 search-query" name="" value="" placeholder="Blog Search...">
						    <button type="submit" class="btn">Search</button>
						  </div>
						</form><!--end form-->
					</div><!--end blog-search-->

					<div class="blog-tab">
						<ul class="nav nav-tabs">
						  <li class="active">
						  	<a data-tip="tooltip" data-title="Popular" data-placment="top" href="#popular-post" data-toggle="tab"><i class="icon-book"></i></a>
						  </li>
						  <li>
						  	<a data-tip="tooltip" data-title="Recent" data-placment="top" href="#recent-post" data-toggle="tab"><i class="icon-time"></i></a>
						  </li>
						  <li>
						  	<a data-tip="tooltip" data-title="Comments" data-placment="top" href="#recent-comments" data-toggle="tab"><i class="icon-comments"></i></a>
						  </li>
						  <li>
						  	<a data-tip="tooltip" data-title="Tags" data-placment="top" href="#tags-post" data-toggle="tab"><i class="icon-tags"></i></a>
						  </li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="popular-post">
								<ul class="vProductItemsTiny">
									<li class="span4 clearfix">
										<div class="thumbImage">
											<a href=""><img src="template/img/72x72.jpg" alt=""></a>
										</div>
										<div class="thumbSetting">
											<div class="thumbTitle">
												<a href="#" class="invarseColor">
													Foliomania the title here
												</a>
												<br>
												<small>23, Jan 2012</small>
											</div>
										</div>
									</li>
									<li class="span4 clearfix">
										<div class="thumbImage">
											<a href=""><img src="template/img/72x72.jpg" alt=""></a>
										</div>
										<div class="thumbSetting">
											<div class="thumbTitle">
												<a href="#" class="invarseColor">
													Foliomania the title here
												</a>
												<br>
												<small>23, Jan 2012</small>
											</div>
										</div>
									</li>
									<li class="span4 clearfix">
										<div class="thumbImage">
											<a href=""><img src="template/img/72x72.jpg" alt=""></a>
										</div>
										<div class="thumbSetting">
											<div class="thumbTitle">
												<a href="#" class="invarseColor">
													Foliomania the title here
												</a>
												<br>
												<small>23, Jan 2012</small>
											</div>
										</div>
									</li>
									<li class="span4 clearfix">
										<div class="thumbImage">
											<a href=""><img src="template/img/72x72.jpg" alt=""></a>
										</div>
										<div class="thumbSetting">
											<div class="thumbTitle">
												<a href="#" class="invarseColor">
													Foliomania the title here
												</a>
												<br>
												<small>23, Jan 2012</small>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="tab-pane" id="recent-post">
								<ul class="vProductItemsTiny">
									<li class="span4 clearfix">
										<div class="thumbImage">
											<a href=""><img src="template/img/72x72.jpg" alt=""></a>
										</div>
										<div class="thumbSetting">
											<div class="thumbTitle">
												<a href="#" class="invarseColor">
													Foliomania the title here
												</a>
												<br>
												<small>23, Jan 2012</small>
											</div>
										</div>
									</li>
									<li class="span4 clearfix">
										<div class="thumbImage">
											<a href=""><img src="template/img/72x72.jpg" alt=""></a>
										</div>
										<div class="thumbSetting">
											<div class="thumbTitle">
												<a href="#" class="invarseColor">
													Foliomania the title here
												</a>
												<br>
												<small>23, Jan 2012</small>
											</div>
										</div>
									</li>
									<li class="span4 clearfix">
										<div class="thumbImage">
											<a href=""><img src="template/img/72x72.jpg" alt=""></a>
										</div>
										<div class="thumbSetting">
											<div class="thumbTitle">
												<a href="#" class="invarseColor">
													Foliomania the title here
												</a>
												<br>
												<small>23, Jan 2012</small>
											</div>
										</div>
									</li>
									<li class="span4 clearfix">
										<div class="thumbImage">
											<a href=""><img src="template/img/72x72.jpg" alt=""></a>
										</div>
										<div class="thumbSetting">
											<div class="thumbTitle">
												<a href="#" class="invarseColor">
													Foliomania the title here
												</a>
												<br>
												<small>23, Jan 2012</small>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="tab-pane" id="recent-comments">
								<ul class="vProductItemsTiny">
									<li class="span4 clearfix">
										<div class="thumbImage">
											<a href=""><img src="template/img/72x72.jpg" alt=""></a>
										</div>
										<div class="thumbSetting">
											<div class="thumbTitle">
												By:<a href="#" class="invarseColor">SomeGuy</a>
												<br>
												On: <a href="#">Foliomania the title here</a>
											</div>
										</div>
									</li>
									<li class="span4 clearfix">
										<div class="thumbImage">
											<a href=""><img src="template/img/72x72.jpg" alt=""></a>
										</div>
										<div class="thumbSetting">
											<div class="thumbTitle">
												By:<a href="#" class="invarseColor">SomeGuy</a>
												<br>
												On: <a href="#">Foliomania the title here</a>
											</div>
										</div>
									</li>
									<li class="span4 clearfix">
										<div class="thumbImage">
											<a href=""><img src="template/img/72x72.jpg" alt=""></a>
										</div>
										<div class="thumbSetting">
											<div class="thumbTitle">
												By:<a href="#" class="invarseColor">SomeGuy</a>
												<br>
												On: <a href="#">Foliomania the title here</a>
											</div>
										</div>
									</li>
									<li class="span4 clearfix">
										<div class="thumbImage">
											<a href=""><img src="template/img/72x72.jpg" alt=""></a>
										</div>
										<div class="thumbSetting">
											<div class="thumbTitle">
												By:<a href="#" class="invarseColor">SomeGuy</a>
												<br>
												On: <a href="#">Foliomania the title here</a>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="tab-pane" id="tags-post">
								Put some Content Tags Here to display it on tabs...
							</div>
						</div><!--end tab-content-->
					</div><!--end blog-tab-->

					<div class="blog-category categories">
						<div class="titleHeader clearfix">
							<h3>Categories</h3>
						</div><!--end titleHeader-->
						<ul class="unstyled">
							<li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> Category No.1</a></li>
							<li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> Category No.2</a></li>
							<li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> Category No.3</a></li>
							<li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> Category No.4</a></li>
							<li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> Category No.5</a></li>
						</ul>
					</div><!--end blog-category-->

					<div class="blog-adds">
						<a href="#"><img src="template/img/214x136.jpg" alt="Adds"></a>
					</div><!--end blog-adds-->

					<div class="twitter-feed">
						<div class="titleHeader clearfix">
							<h3>Twitter Feeds</h3>
						</div><!--end titleHeader-->
						<div class="tweet">
							<!-- tweets will generate automaticlly here-->
						</div><!--end tweet-->
					</div><!--end blog-twitter-->

				</aside><!--end span3-->

			</div><!--end row-->

		</div><!--end conatiner-->

</asp:Content>

