.class Lcom/didi/common/ui/component/DrawerView$DrawerToggler;
.super Ljava/lang/Object;
.source "DrawerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/component/DrawerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerToggler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/component/DrawerView;


# direct methods
.method private constructor <init>(Lcom/didi/common/ui/component/DrawerView;)V
    .locals 0
    .parameter

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/didi/common/ui/component/DrawerView$DrawerToggler;->this$0:Lcom/didi/common/ui/component/DrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/common/ui/component/DrawerView;Lcom/didi/common/ui/component/DrawerView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1009
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/DrawerView$DrawerToggler;-><init>(Lcom/didi/common/ui/component/DrawerView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView$DrawerToggler;->this$0:Lcom/didi/common/ui/component/DrawerView;

    #getter for: Lcom/didi/common/ui/component/DrawerView;->mLocked:Z
    invoke-static {v0}, Lcom/didi/common/ui/component/DrawerView;->access$200(Lcom/didi/common/ui/component/DrawerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    :goto_0
    return-void

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView$DrawerToggler;->this$0:Lcom/didi/common/ui/component/DrawerView;

    #getter for: Lcom/didi/common/ui/component/DrawerView;->mAnimateOnClick:Z
    invoke-static {v0}, Lcom/didi/common/ui/component/DrawerView;->access$300(Lcom/didi/common/ui/component/DrawerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView$DrawerToggler;->this$0:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->animateToggle()V

    goto :goto_0

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView$DrawerToggler;->this$0:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->toggle()V

    goto :goto_0
.end method
