.class Lcom/didi/frame/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/didi/im/helper/IMPushHelper$IMUnreadTotalChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/MainActivity;


# direct methods
.method constructor <init>(Lcom/didi/frame/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/didi/frame/MainActivity$14;->this$0:Lcom/didi/frame/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIMUnreadTotalChanged()V
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/didi/frame/MainActivity$14;->this$0:Lcom/didi/frame/MainActivity;

    #calls: Lcom/didi/frame/MainActivity;->refreshIMUnread()V
    invoke-static {v0}, Lcom/didi/frame/MainActivity;->access$300(Lcom/didi/frame/MainActivity;)V

    .line 1023
    return-void
.end method
