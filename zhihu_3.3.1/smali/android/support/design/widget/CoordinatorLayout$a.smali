.class Landroid/support/design/widget/CoordinatorLayout$a;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/support/v4/view/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 2581
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$a;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/CoordinatorLayout$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2581
    invoke-direct {p0, p1}, Landroid/support/design/widget/CoordinatorLayout$a;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/bj;)Landroid/support/v4/view/bj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2585
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$a;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {v0, p2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/v4/view/bj;)Landroid/support/v4/view/bj;

    move-result-object v0

    return-object v0
.end method
