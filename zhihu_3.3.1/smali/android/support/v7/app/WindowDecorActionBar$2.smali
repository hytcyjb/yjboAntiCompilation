.class Landroid/support/v7/app/WindowDecorActionBar$2;
.super Landroid/support/v4/view/bh;
.source "WindowDecorActionBar.java"


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
    .line 151
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$2;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/support/v4/view/bh;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$2;->a:Landroid/support/v7/app/WindowDecorActionBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/app/WindowDecorActionBar;->a(Landroid/support/v7/app/WindowDecorActionBar;Landroid/support/v7/view/h;)Landroid/support/v7/view/h;

    .line 155
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$2;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->c(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->requestLayout()V

    .line 156
    return-void
.end method
