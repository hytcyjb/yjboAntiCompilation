.class Landroid/support/v7/app/WindowDecorActionBar$3;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v4/view/bi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Landroid/support/v7/app/WindowDecorActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$3;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$3;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->c(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 164
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 165
    return-void
.end method
