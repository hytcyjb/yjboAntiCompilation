.class Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$9;
.super Ljava/lang/Object;
.source "DDriveRealtimeFragment.java"

# interfaces
.implements Lcom/didi/ddrive/listener/DDriveRealtimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$9;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDDriveBtnClicked()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$9;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->jumpToSearch()V

    .line 378
    return-void
.end method
