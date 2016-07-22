.class Lcom/didi/game/activity/GameActivity$1;
.super Ljava/lang/Thread;
.source "GameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/activity/GameActivity;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/activity/GameActivity;


# direct methods
.method constructor <init>(Lcom/didi/game/activity/GameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/didi/game/activity/GameActivity$1;->this$0:Lcom/didi/game/activity/GameActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 180
    invoke-static {}, Lcom/didi/common/util/TraceLog;->saveLog()V

    .line 181
    return-void
.end method
