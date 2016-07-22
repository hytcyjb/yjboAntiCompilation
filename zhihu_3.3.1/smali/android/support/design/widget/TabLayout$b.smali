.class Landroid/support/design/widget/TabLayout$b;
.super Landroid/database/DataSetObserver;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/TabLayout;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 2005
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$b;->a:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/TabLayout$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2005
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout$b;-><init>(Landroid/support/design/widget/TabLayout;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2008
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$b;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->n(Landroid/support/design/widget/TabLayout;)V

    .line 2009
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$b;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->n(Landroid/support/design/widget/TabLayout;)V

    .line 2014
    return-void
.end method
