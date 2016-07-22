.class Lcom/didi/frame/DepartureActivity$3;
.super Ljava/lang/Object;
.source "DepartureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/DepartureActivity;->initException()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/DepartureActivity;


# direct methods
.method constructor <init>(Lcom/didi/frame/DepartureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/didi/frame/DepartureActivity$3;->this$0:Lcom/didi/frame/DepartureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$3;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$3;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->search:Lcom/didi/frame/departure/DepartSearchTitle;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$500(Lcom/didi/frame/DepartureActivity;)Lcom/didi/frame/departure/DepartSearchTitle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/didi/frame/DepartureActivity;->getPoiSug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/frame/DepartureActivity;->access$600(Lcom/didi/frame/DepartureActivity;Ljava/lang/String;)V

    .line 233
    return-void
.end method
