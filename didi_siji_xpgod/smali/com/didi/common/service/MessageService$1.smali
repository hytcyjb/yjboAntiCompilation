.class Lcom/didi/common/service/MessageService$1;
.super Ljava/lang/Object;
.source "MessageService.java"

# interfaces
.implements Lcom/didi/soso/location/LocationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/service/MessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/service/MessageService;


# direct methods
.method constructor <init>(Lcom/didi/common/service/MessageService;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/didi/common/service/MessageService$1;->this$0:Lcom/didi/common/service/MessageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationUpdate(Lcom/tencent/map/geolocation/TencentLocation;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/didi/common/service/MessageService$1;->this$0:Lcom/didi/common/service/MessageService;

    #calls: Lcom/didi/common/service/MessageService;->loadServerMessage()V
    invoke-static {v0}, Lcom/didi/common/service/MessageService;->access$000(Lcom/didi/common/service/MessageService;)V

    .line 69
    return-void
.end method
