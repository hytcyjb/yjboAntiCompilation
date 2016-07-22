.class Lcom/didi/frame/departure/DepartSearchTitle$5;
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
    .line 144
    iput-object p1, p0, Lcom/didi/frame/departure/DepartSearchTitle$5;->this$0:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/didi/frame/departure/DepartSearchTitle$5;->this$0:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v1}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, input:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SearchInput="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 150
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const v1, 0x7f0b02b9

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/departure/DepartSearchTitle$5;->this$0:Lcom/didi/frame/departure/DepartSearchTitle;

    #getter for: Lcom/didi/frame/departure/DepartSearchTitle;->listener:Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;
    invoke-static {v1}, Lcom/didi/frame/departure/DepartSearchTitle;->access$000(Lcom/didi/frame/departure/DepartSearchTitle;)Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;->onConfirm()V

    goto :goto_0
.end method
