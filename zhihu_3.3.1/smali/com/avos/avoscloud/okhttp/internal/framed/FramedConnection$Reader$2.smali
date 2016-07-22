.class Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader$2;
.super Lcom/avos/avoscloud/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->ackSettingsLater(Lcom/avos/avoscloud/okhttp/internal/framed/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;

.field final synthetic val$peerSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;


# direct methods
.method varargs constructor <init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/avos/avoscloud/okhttp/internal/framed/Settings;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader$2;->this$1:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;

    iput-object p4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader$2;->val$peerSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    invoke-direct {p0, p2, p3}, Lcom/avos/avoscloud/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader$2;->this$1:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v0, v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    iget-object v0, v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader$2;->val$peerSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;->ackSettings(Lcom/avos/avoscloud/okhttp/internal/framed/Settings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :goto_0
    return-void

    .line 722
    :catch_0
    move-exception v0

    goto :goto_0
.end method
