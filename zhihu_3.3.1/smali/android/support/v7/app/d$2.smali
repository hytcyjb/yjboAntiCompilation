.class Landroid/support/v7/app/d$2;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/support/v4/widget/NestedScrollView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/d;->a(Landroid/view/ViewGroup;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/v7/app/d;


# direct methods
.method constructor <init>(Landroid/support/v7/app/d;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Landroid/support/v7/app/d$2;->c:Landroid/support/v7/app/d;

    iput-object p2, p0, Landroid/support/v7/app/d$2;->a:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v7/app/d$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/widget/NestedScrollView;IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 551
    iget-object v0, p0, Landroid/support/v7/app/d$2;->a:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/app/d$2;->b:Landroid/view/View;

    invoke-static {p1, v0, v1}, Landroid/support/v7/app/d;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 552
    return-void
.end method
