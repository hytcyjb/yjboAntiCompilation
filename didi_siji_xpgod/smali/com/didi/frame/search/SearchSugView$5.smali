.class Lcom/didi/frame/search/SearchSugView$5;
.super Ljava/lang/Object;
.source "SearchSugView.java"

# interfaces
.implements Lcom/didi/frame/search/CommonAddrView$CommonAddrListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/search/SearchSugView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/search/SearchSugView;


# direct methods
.method constructor <init>(Lcom/didi/frame/search/SearchSugView;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/didi/frame/search/SearchSugView$5;->this$0:Lcom/didi/frame/search/SearchSugView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompany()V
    .locals 2

    .prologue
    .line 504
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->checkLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$5;->this$0:Lcom/didi/frame/search/SearchSugView;

    invoke-virtual {v0}, Lcom/didi/frame/search/SearchSugView;->back()V

    .line 514
    :goto_0
    return-void

    .line 508
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->hasCompanyAddress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$5;->this$0:Lcom/didi/frame/search/SearchSugView;

    const/4 v1, 0x1

    #setter for: Lcom/didi/frame/search/SearchSugView;->isCompanyComm:Z
    invoke-static {v0, v1}, Lcom/didi/frame/search/SearchSugView;->access$1502(Lcom/didi/frame/search/SearchSugView;Z)Z

    .line 510
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$5;->this$0:Lcom/didi/frame/search/SearchSugView;

    #calls: Lcom/didi/frame/search/SearchSugView;->showSetCommView()V
    invoke-static {v0}, Lcom/didi/frame/search/SearchSugView;->access$1300(Lcom/didi/frame/search/SearchSugView;)V

    goto :goto_0

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$5;->this$0:Lcom/didi/frame/search/SearchSugView;

    invoke-static {}, Lcom/didi/common/helper/UserHelper;->getCompanyAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    #calls: Lcom/didi/frame/search/SearchSugView;->onModify(Lcom/didi/common/model/Address;)V
    invoke-static {v0, v1}, Lcom/didi/frame/search/SearchSugView;->access$1400(Lcom/didi/frame/search/SearchSugView;Lcom/didi/common/model/Address;)V

    goto :goto_0
.end method

.method public onHome()V
    .locals 2

    .prologue
    .line 490
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->checkLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$5;->this$0:Lcom/didi/frame/search/SearchSugView;

    invoke-virtual {v0}, Lcom/didi/frame/search/SearchSugView;->back()V

    .line 500
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->hasHomeAddress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$5;->this$0:Lcom/didi/frame/search/SearchSugView;

    const/4 v1, 0x1

    #setter for: Lcom/didi/frame/search/SearchSugView;->isHomeComm:Z
    invoke-static {v0, v1}, Lcom/didi/frame/search/SearchSugView;->access$1202(Lcom/didi/frame/search/SearchSugView;Z)Z

    .line 496
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$5;->this$0:Lcom/didi/frame/search/SearchSugView;

    #calls: Lcom/didi/frame/search/SearchSugView;->showSetCommView()V
    invoke-static {v0}, Lcom/didi/frame/search/SearchSugView;->access$1300(Lcom/didi/frame/search/SearchSugView;)V

    goto :goto_0

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$5;->this$0:Lcom/didi/frame/search/SearchSugView;

    invoke-static {}, Lcom/didi/common/helper/UserHelper;->getHomeAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    #calls: Lcom/didi/frame/search/SearchSugView;->onModify(Lcom/didi/common/model/Address;)V
    invoke-static {v0, v1}, Lcom/didi/frame/search/SearchSugView;->access$1400(Lcom/didi/frame/search/SearchSugView;Lcom/didi/common/model/Address;)V

    goto :goto_0
.end method

.method public onOther()V
    .locals 0

    .prologue
    .line 486
    return-void
.end method
