.class Lcom/didi/game/activity/FoundWebActivity$4$1;
.super Ljava/lang/Object;
.source "FoundWebActivity.java"

# interfaces
.implements Lcom/didi/common/download/UpdateHelper$UpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/activity/FoundWebActivity$4;->execute(Lorg/json/JSONObject;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/game/activity/FoundWebActivity$4;


# direct methods
.method constructor <init>(Lcom/didi/game/activity/FoundWebActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/didi/game/activity/FoundWebActivity$4$1;->this$1:Lcom/didi/game/activity/FoundWebActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 0

    .prologue
    .line 213
    invoke-static {}, Lcom/didi/common/base/DidiApp;->checkAppVersion()V

    .line 214
    return-void
.end method
