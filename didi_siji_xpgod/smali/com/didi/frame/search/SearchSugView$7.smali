.class Lcom/didi/frame/search/SearchSugView$7;
.super Ljava/lang/Object;
.source "SearchSugView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/search/SearchSugView;
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
    .line 533
    iput-object p1, p0, Lcom/didi/frame/search/SearchSugView$7;->this$0:Lcom/didi/frame/search/SearchSugView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$7;->this$0:Lcom/didi/frame/search/SearchSugView;

    #calls: Lcom/didi/frame/search/SearchSugView;->setCustomAddress()V
    invoke-static {v0}, Lcom/didi/frame/search/SearchSugView;->access$1900(Lcom/didi/frame/search/SearchSugView;)V

    .line 538
    return-void
.end method
