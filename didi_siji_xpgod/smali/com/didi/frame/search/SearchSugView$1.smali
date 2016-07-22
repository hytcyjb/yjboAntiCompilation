.class Lcom/didi/frame/search/SearchSugView$1;
.super Ljava/lang/Object;
.source "SearchSugView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/search/SearchSugView;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/search/SearchSugView;


# direct methods
.method constructor <init>(Lcom/didi/frame/search/SearchSugView;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/didi/frame/search/SearchSugView$1;->this$0:Lcom/didi/frame/search/SearchSugView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$1;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;
    invoke-static {v0}, Lcom/didi/frame/search/SearchSugView;->access$000(Lcom/didi/frame/search/SearchSugView;)Lcom/didi/frame/departure/DepartSearchTitle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartSearchTitle;->hideInputMethod()V

    .line 192
    const/4 v0, 0x0

    return v0
.end method
