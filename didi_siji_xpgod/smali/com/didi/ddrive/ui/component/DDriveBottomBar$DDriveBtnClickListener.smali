.class Lcom/didi/ddrive/ui/component/DDriveBottomBar$DDriveBtnClickListener;
.super Ljava/lang/Object;
.source "DDriveBottomBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/component/DDriveBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DDriveBtnClickListener"
.end annotation


# instance fields
.field public index:I

.field final synthetic this$0:Lcom/didi/ddrive/ui/component/DDriveBottomBar;


# direct methods
.method public constructor <init>(Lcom/didi/ddrive/ui/component/DDriveBottomBar;I)V
    .locals 0
    .parameter
    .parameter "in"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar$DDriveBtnClickListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p2, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar$DDriveBtnClickListener;->index:I

    .line 109
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 113
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar$DDriveBtnClickListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveBottomBar;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveBottomBar;->mBtnConfig:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->access$100(Lcom/didi/ddrive/ui/component/DDriveBottomBar;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar$DDriveBtnClickListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveBottomBar;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveBottomBar;->mBtnConfig:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->access$100(Lcom/didi/ddrive/ui/component/DDriveBottomBar;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar$DDriveBtnClickListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveBottomBar;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveBottomBar;->mBtnConfig:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->access$100(Lcom/didi/ddrive/ui/component/DDriveBottomBar;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar$DDriveBtnClickListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveBottomBar;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveBottomBar;->mBtnConfig:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->access$100(Lcom/didi/ddrive/ui/component/DDriveBottomBar;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar$DDriveBtnClickListener;->index:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$Button;

    iget-object v1, v2, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$Button;->url:Ljava/lang/String;

    .line 118
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar$DDriveBtnClickListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveBottomBar;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveBottomBar;->mBtnConfig:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->access$100(Lcom/didi/ddrive/ui/component/DDriveBottomBar;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar$DDriveBtnClickListener;->index:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$Button;

    iget-object v0, v2, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$Button;->text:Ljava/lang/String;

    .line 119
    .local v0, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar$DDriveBtnClickListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveBottomBar;

    #calls: Lcom/didi/ddrive/ui/component/DDriveBottomBar;->jumpToWeb(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v1, v0}, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->access$200(Lcom/didi/ddrive/ui/component/DDriveBottomBar;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
