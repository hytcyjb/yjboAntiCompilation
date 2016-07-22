.class Lcom/didi/frame/departure/DepartSearchTitle$4;
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
    .line 131
    iput-object p1, p0, Lcom/didi/frame/departure/DepartSearchTitle$4;->this$0:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle$4;->this$0:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const v0, 0x7f0b02b9

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle$4;->this$0:Lcom/didi/frame/departure/DepartSearchTitle;

    #getter for: Lcom/didi/frame/departure/DepartSearchTitle;->listener:Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;
    invoke-static {v0}, Lcom/didi/frame/departure/DepartSearchTitle;->access$000(Lcom/didi/frame/departure/DepartSearchTitle;)Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/frame/departure/DepartSearchTitle$4;->this$0:Lcom/didi/frame/departure/DepartSearchTitle;

    #getter for: Lcom/didi/frame/departure/DepartSearchTitle;->input:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/frame/departure/DepartSearchTitle;->access$100(Lcom/didi/frame/departure/DepartSearchTitle;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;->onSearch(Ljava/lang/String;)V

    goto :goto_0
.end method
