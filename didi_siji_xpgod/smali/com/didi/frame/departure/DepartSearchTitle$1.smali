.class Lcom/didi/frame/departure/DepartSearchTitle$1;
.super Ljava/lang/Object;
.source "DepartSearchTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/departure/DepartSearchTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/departure/DepartSearchTitle;


# direct methods
.method constructor <init>(Lcom/didi/frame/departure/DepartSearchTitle;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/didi/frame/departure/DepartSearchTitle$1;->this$0:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 110
    const-string v0, "isClick"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle$1;->this$0:Lcom/didi/frame/departure/DepartSearchTitle;

    #getter for: Lcom/didi/frame/departure/DepartSearchTitle;->listener:Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;
    invoke-static {v0}, Lcom/didi/frame/departure/DepartSearchTitle;->access$000(Lcom/didi/frame/departure/DepartSearchTitle;)Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;->onShow()V

    .line 112
    return-void
.end method
