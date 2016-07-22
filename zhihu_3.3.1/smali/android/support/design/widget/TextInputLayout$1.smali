.class Landroid/support/design/widget/TextInputLayout$1;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TextInputLayout;->setEditText(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout$1;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$1;->a:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/support/design/widget/TextInputLayout;Z)V

    .line 241
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$1;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v0}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/support/design/widget/TextInputLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$1;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/support/design/widget/TextInputLayout;I)V

    .line 244
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    return-void
.end method
