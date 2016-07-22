.class Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;
.super Ljava/lang/Thread;
.source "CommonContactInviteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->renderPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;->this$1:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1$1;-><init>(Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method
