.class Lcom/didi/frame/departure/DepartSearchTitle$6;
.super Ljava/lang/Object;
.source "DepartSearchTitle.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 160
    iput-object p1, p0, Lcom/didi/frame/departure/DepartSearchTitle$6;->this$0:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, sug:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/frame/departure/DepartSearchTitle$6;->this$0:Lcom/didi/frame/departure/DepartSearchTitle;

    #getter for: Lcom/didi/frame/departure/DepartSearchTitle;->listener:Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;
    invoke-static {v1}, Lcom/didi/frame/departure/DepartSearchTitle;->access$000(Lcom/didi/frame/departure/DepartSearchTitle;)Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;->onInputChange(Ljava/lang/String;)V

    .line 166
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/didi/frame/departure/DepartSearchTitle$6;->this$0:Lcom/didi/frame/departure/DepartSearchTitle;

    iget-object v2, p0, Lcom/didi/frame/departure/DepartSearchTitle$6;->this$0:Lcom/didi/frame/departure/DepartSearchTitle;

    #getter for: Lcom/didi/frame/departure/DepartSearchTitle;->clear:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/didi/frame/departure/DepartSearchTitle;->access$200(Lcom/didi/frame/departure/DepartSearchTitle;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/frame/departure/DepartSearchTitle;->hideView(Landroid/view/View;)V

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/departure/DepartSearchTitle$6;->this$0:Lcom/didi/frame/departure/DepartSearchTitle;

    iget-object v2, p0, Lcom/didi/frame/departure/DepartSearchTitle$6;->this$0:Lcom/didi/frame/departure/DepartSearchTitle;

    #getter for: Lcom/didi/frame/departure/DepartSearchTitle;->clear:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/didi/frame/departure/DepartSearchTitle;->access$200(Lcom/didi/frame/departure/DepartSearchTitle;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/frame/departure/DepartSearchTitle;->showView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DepartInputs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DepartInputstart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DepartInputcount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DepartInputafter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 179
    if-nez p2, :cond_0

    .line 180
    iget-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle$6;->this$0:Lcom/didi/frame/departure/DepartSearchTitle;

    #getter for: Lcom/didi/frame/departure/DepartSearchTitle;->listener:Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;
    invoke-static {v0}, Lcom/didi/frame/departure/DepartSearchTitle;->access$000(Lcom/didi/frame/departure/DepartSearchTitle;)Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;->onStartInput()V

    .line 182
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 188
    return-void
.end method
