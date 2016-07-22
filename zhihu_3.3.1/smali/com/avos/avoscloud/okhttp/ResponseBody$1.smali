.class final Lcom/avos/avoscloud/okhttp/ResponseBody$1;
.super Lcom/avos/avoscloud/okhttp/ResponseBody;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/okhttp/ResponseBody;->create(Lcom/avos/avoscloud/okhttp/MediaType;JLcom/avos/avoscloud/okio/BufferedSource;)Lcom/avos/avoscloud/okhttp/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lcom/avos/avoscloud/okio/BufferedSource;

.field final synthetic val$contentLength:J

.field final synthetic val$contentType:Lcom/avos/avoscloud/okhttp/MediaType;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okhttp/MediaType;JLcom/avos/avoscloud/okio/BufferedSource;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/ResponseBody$1;->val$contentType:Lcom/avos/avoscloud/okhttp/MediaType;

    iput-wide p2, p0, Lcom/avos/avoscloud/okhttp/ResponseBody$1;->val$contentLength:J

    iput-object p4, p0, Lcom/avos/avoscloud/okhttp/ResponseBody$1;->val$content:Lcom/avos/avoscloud/okio/BufferedSource;

    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/ResponseBody$1;->val$contentLength:J

    return-wide v0
.end method

.method public contentType()Lcom/avos/avoscloud/okhttp/MediaType;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ResponseBody$1;->val$contentType:Lcom/avos/avoscloud/okhttp/MediaType;

    return-object v0
.end method

.method public source()Lcom/avos/avoscloud/okio/BufferedSource;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ResponseBody$1;->val$content:Lcom/avos/avoscloud/okio/BufferedSource;

    return-object v0
.end method
