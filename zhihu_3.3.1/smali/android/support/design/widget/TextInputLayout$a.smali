.class Landroid/support/design/widget/TextInputLayout$a;
.super Landroid/support/v4/view/a;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 921
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout$a;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 921
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout$a;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a/e;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 940
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/e;)V

    .line 941
    const-class v0, Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/e;->b(Ljava/lang/CharSequence;)V

    .line 943
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$a;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v0}, Landroid/support/design/widget/TextInputLayout;->c(Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/CollapsingTextHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->i()Ljava/lang/CharSequence;

    move-result-object v0

    .line 944
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 945
    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/e;->c(Ljava/lang/CharSequence;)V

    .line 947
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$a;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v0}, Landroid/support/design/widget/TextInputLayout;->d(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 948
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$a;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v0}, Landroid/support/design/widget/TextInputLayout;->d(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/e;->e(Landroid/view/View;)V

    .line 950
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$a;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v0}, Landroid/support/design/widget/TextInputLayout;->b(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$a;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v0}, Landroid/support/design/widget/TextInputLayout;->b(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 951
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 952
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/e;->j(Z)V

    .line 953
    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/e;->e(Ljava/lang/CharSequence;)V

    .line 955
    :cond_2
    return-void

    .line 950
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 924
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 925
    const-class v0, Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 926
    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 930
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 932
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$a;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v0}, Landroid/support/design/widget/TextInputLayout;->c(Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/CollapsingTextHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->i()Ljava/lang/CharSequence;

    move-result-object v0

    .line 933
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 934
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    :cond_0
    return-void
.end method
