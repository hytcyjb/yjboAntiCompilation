.class public Landroid/support/design/widget/TabLayout$g;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field private final a:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 1985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1986
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$g;->a:Landroid/support/v4/view/ViewPager;

    .line 1987
    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/TabLayout$d;)V
    .locals 2
    .parameter

    .prologue
    .line 1991
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$d;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1992
    return-void
.end method

.method public b(Landroid/support/design/widget/TabLayout$d;)V
    .locals 0
    .parameter

    .prologue
    .line 1997
    return-void
.end method

.method public c(Landroid/support/design/widget/TabLayout$d;)V
    .locals 0
    .parameter

    .prologue
    .line 2002
    return-void
.end method
