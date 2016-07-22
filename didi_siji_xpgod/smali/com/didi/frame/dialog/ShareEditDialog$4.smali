.class Lcom/didi/frame/dialog/ShareEditDialog$4;
.super Ljava/lang/Object;
.source "ShareEditDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/dialog/ShareEditDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private count:I

.field private editEnd:I

.field private editStart:I

.field private tempInput:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/didi/frame/dialog/ShareEditDialog;


# direct methods
.method constructor <init>(Lcom/didi/frame/dialog/ShareEditDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 151
    iget-object v1, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    #getter for: Lcom/didi/frame/dialog/ShareEditDialog;->editContent:Lx/EditText;
    invoke-static {v1}, Lcom/didi/frame/dialog/ShareEditDialog;->access$200(Lcom/didi/frame/dialog/ShareEditDialog;)Lx/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    #getter for: Lcom/didi/frame/dialog/ShareEditDialog;->mTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v2}, Lcom/didi/frame/dialog/ShareEditDialog;->access$400(Lcom/didi/frame/dialog/ShareEditDialog;)Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    iget-object v1, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    #getter for: Lcom/didi/frame/dialog/ShareEditDialog;->editContent:Lx/EditText;
    invoke-static {v1}, Lcom/didi/frame/dialog/ShareEditDialog;->access$200(Lcom/didi/frame/dialog/ShareEditDialog;)Lx/EditText;

    move-result-object v1

    invoke-virtual {v1}, Lx/EditText;->getSelectionStart()I

    move-result v1

    iput v1, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->editStart:I

    .line 153
    iget-object v1, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    #getter for: Lcom/didi/frame/dialog/ShareEditDialog;->editContent:Lx/EditText;
    invoke-static {v1}, Lcom/didi/frame/dialog/ShareEditDialog;->access$200(Lcom/didi/frame/dialog/ShareEditDialog;)Lx/EditText;

    move-result-object v1

    invoke-virtual {v1}, Lx/EditText;->getSelectionEnd()I

    move-result v1

    iput v1, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->editEnd:I

    .line 154
    iget-object v1, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->tempInput:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0x8c

    if-le v1, v2, :cond_0

    .line 155
    iget v1, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->editStart:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->editEnd:I

    invoke-interface {p1, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 156
    iget v0, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->editStart:I

    .line 157
    .local v0, tempSelection:I
    iget-object v1, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    #getter for: Lcom/didi/frame/dialog/ShareEditDialog;->editContent:Lx/EditText;
    invoke-static {v1}, Lcom/didi/frame/dialog/ShareEditDialog;->access$200(Lcom/didi/frame/dialog/ShareEditDialog;)Lx/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Lx/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    #getter for: Lcom/didi/frame/dialog/ShareEditDialog;->editContent:Lx/EditText;
    invoke-static {v1}, Lcom/didi/frame/dialog/ShareEditDialog;->access$200(Lcom/didi/frame/dialog/ShareEditDialog;)Lx/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lx/EditText;->setSelection(I)V

    .line 160
    .end local v0           #tempSelection:I
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    #getter for: Lcom/didi/frame/dialog/ShareEditDialog;->editContent:Lx/EditText;
    invoke-static {v1}, Lcom/didi/frame/dialog/ShareEditDialog;->access$200(Lcom/didi/frame/dialog/ShareEditDialog;)Lx/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    #getter for: Lcom/didi/frame/dialog/ShareEditDialog;->mTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v2}, Lcom/didi/frame/dialog/ShareEditDialog;->access$400(Lcom/didi/frame/dialog/ShareEditDialog;)Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 161
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->tempInput:Ljava/lang/CharSequence;

    .line 132
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 137
    add-int v2, p3, p4

    iput v2, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->count:I

    .line 138
    iget-object v2, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    #getter for: Lcom/didi/frame/dialog/ShareEditDialog;->editContent:Lx/EditText;
    invoke-static {v2}, Lcom/didi/frame/dialog/ShareEditDialog;->access$200(Lcom/didi/frame/dialog/ShareEditDialog;)Lx/EditText;

    move-result-object v2

    invoke-virtual {v2}, Lx/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, editable:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/frame/dialog/ShareEditDialog;->stringFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, str:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    #getter for: Lcom/didi/frame/dialog/ShareEditDialog;->editContent:Lx/EditText;
    invoke-static {v2}, Lcom/didi/frame/dialog/ShareEditDialog;->access$200(Lcom/didi/frame/dialog/ShareEditDialog;)Lx/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Lx/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    #getter for: Lcom/didi/frame/dialog/ShareEditDialog;->editContent:Lx/EditText;
    invoke-static {v2}, Lcom/didi/frame/dialog/ShareEditDialog;->access$200(Lcom/didi/frame/dialog/ShareEditDialog;)Lx/EditText;

    move-result-object v2

    invoke-virtual {v2}, Lx/EditText;->length()I

    move-result v2

    iput v2, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->count:I

    .line 146
    iget-object v2, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    #getter for: Lcom/didi/frame/dialog/ShareEditDialog;->txtCount:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/didi/frame/dialog/ShareEditDialog;->access$300(Lcom/didi/frame/dialog/ShareEditDialog;)Landroid/widget/TextView;

    move-result-object v2

    iget v3, p0, Lcom/didi/frame/dialog/ShareEditDialog$4;->count:I

    rsub-int v3, v3, 0x8c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method
