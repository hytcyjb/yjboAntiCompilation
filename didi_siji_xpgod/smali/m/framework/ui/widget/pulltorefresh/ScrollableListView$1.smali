.class Lm/framework/ui/widget/pulltorefresh/ScrollableListView$1;
.super Ljava/lang/Object;
.source "ScrollableListView.java"

# interfaces
.implements Lm/framework/ui/widget/pulltorefresh/OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lm/framework/ui/widget/pulltorefresh/ScrollableListView;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/pulltorefresh/ScrollableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableListView$1;->this$0:Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lm/framework/ui/widget/pulltorefresh/Scrollable;IIII)V
    .locals 2
    .parameter "scrollable"
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 33
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableListView$1;->this$0:Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

    if-gtz p3, :cond_0

    if-gtz p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->pullEnable:Z
    invoke-static {v1, v0}, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->access$0(Lm/framework/ui/widget/pulltorefresh/ScrollableListView;Z)V

    .line 34
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method