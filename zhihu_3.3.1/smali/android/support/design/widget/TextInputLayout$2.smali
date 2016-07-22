.class Landroid/support/design/widget/TextInputLayout$2;
.super Landroid/support/v4/view/bh;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V
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
    .line 566
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout$2;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p0}, Landroid/support/v4/view/bh;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 569
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 570
    return-void
.end method
