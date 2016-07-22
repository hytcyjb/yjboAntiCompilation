.class Lcom/didi/im/adapter/CommonMessageAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CommonMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/im/adapter/CommonMessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public contentView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/didi/im/adapter/CommonMessageAdapter;


# direct methods
.method constructor <init>(Lcom/didi/im/adapter/CommonMessageAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/didi/im/adapter/CommonMessageAdapter$ViewHolder;->this$0:Lcom/didi/im/adapter/CommonMessageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
