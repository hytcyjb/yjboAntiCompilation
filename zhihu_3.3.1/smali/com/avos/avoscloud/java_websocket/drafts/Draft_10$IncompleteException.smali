.class Lcom/avos/avoscloud/java_websocket/drafts/Draft_10$IncompleteException;
.super Ljava/lang/Throwable;
.source "Draft_10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncompleteException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x65bb3ca323055105L


# instance fields
.field private preferedsize:I

.field final synthetic this$0:Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10$IncompleteException;->this$0:Lcom/avos/avoscloud/java_websocket/drafts/Draft_10;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 42
    iput p2, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10$IncompleteException;->preferedsize:I

    .line 43
    return-void
.end method


# virtual methods
.method public getPreferedSize()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_10$IncompleteException;->preferedsize:I

    return v0
.end method
