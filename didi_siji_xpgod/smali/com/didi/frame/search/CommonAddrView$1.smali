.class Lcom/didi/frame/search/CommonAddrView$1;
.super Ljava/lang/Object;
.source "CommonAddrView.java"

# interfaces
.implements Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/search/CommonAddrView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/search/CommonAddrView;


# direct methods
.method constructor <init>(Lcom/didi/frame/search/CommonAddrView;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/didi/frame/search/CommonAddrView$1;->this$0:Lcom/didi/frame/search/CommonAddrView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/didi/frame/search/CommonAddrView$1;->this$0:Lcom/didi/frame/search/CommonAddrView;

    #getter for: Lcom/didi/frame/search/CommonAddrView;->listener:Lcom/didi/frame/search/CommonAddrView$CommonAddrListener;
    invoke-static {v0}, Lcom/didi/frame/search/CommonAddrView;->access$000(Lcom/didi/frame/search/CommonAddrView;)Lcom/didi/frame/search/CommonAddrView$CommonAddrListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/didi/frame/search/CommonAddrView$1;->this$0:Lcom/didi/frame/search/CommonAddrView;

    #getter for: Lcom/didi/frame/search/CommonAddrView;->listener:Lcom/didi/frame/search/CommonAddrView$CommonAddrListener;
    invoke-static {v0}, Lcom/didi/frame/search/CommonAddrView;->access$000(Lcom/didi/frame/search/CommonAddrView;)Lcom/didi/frame/search/CommonAddrView$CommonAddrListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/search/CommonAddrView$CommonAddrListener;->onHome()V

    .line 67
    :cond_0
    return-void
.end method
