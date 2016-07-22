.class Lcom/didi/frame/search/SearchSugView$2;
.super Ljava/lang/Object;
.source "SearchSugView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/search/SearchSugView;->initException()V
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
    .line 207
    iput-object p1, p0, Lcom/didi/frame/search/SearchSugView$2;->this$0:Lcom/didi/frame/search/SearchSugView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$2;->this$0:Lcom/didi/frame/search/SearchSugView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView$2;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;
    invoke-static {v1}, Lcom/didi/frame/search/SearchSugView;->access$000(Lcom/didi/frame/search/SearchSugView;)Lcom/didi/frame/departure/DepartSearchTitle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/search/SearchSugView$2;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->cityName:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/frame/search/SearchSugView;->access$100(Lcom/didi/frame/search/SearchSugView;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/didi/frame/search/SearchSugView;->getPoiSug(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/didi/frame/search/SearchSugView;->access$200(Lcom/didi/frame/search/SearchSugView;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method
