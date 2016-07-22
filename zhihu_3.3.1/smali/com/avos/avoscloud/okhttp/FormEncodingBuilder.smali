.class public final Lcom/avos/avoscloud/okhttp/FormEncodingBuilder;
.super Ljava/lang/Object;
.source "FormEncodingBuilder.java"


# static fields
.field private static final CONTENT_TYPE:Lcom/avos/avoscloud/okhttp/MediaType;


# instance fields
.field private final content:Lcom/avos/avoscloud/okio/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/FormEncodingBuilder;->CONTENT_TYPE:Lcom/avos/avoscloud/okhttp/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v0}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/FormEncodingBuilder;->content:Lcom/avos/avoscloud/okio/Buffer;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/FormEncodingBuilder;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/FormEncodingBuilder;->content:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/FormEncodingBuilder;->content:Lcom/avos/avoscloud/okio/Buffer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/FormEncodingBuilder;->content:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p1

    move v5, v2

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Lcom/avos/avoscloud/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZ)V

    .line 37
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/FormEncodingBuilder;->content:Lcom/avos/avoscloud/okio/Buffer;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/FormEncodingBuilder;->content:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p2

    move v5, v2

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Lcom/avos/avoscloud/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZ)V

    .line 40
    return-object p0
.end method

.method public addEncoded(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/FormEncodingBuilder;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 45
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/FormEncodingBuilder;->content:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/FormEncodingBuilder;->content:Lcom/avos/avoscloud/okio/Buffer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/FormEncodingBuilder;->content:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p1

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Lcom/avos/avoscloud/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZ)V

    .line 50
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/FormEncodingBuilder;->content:Lcom/avos/avoscloud/okio/Buffer;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 51
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/FormEncodingBuilder;->content:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p2

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Lcom/avos/avoscloud/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZ)V

    .line 53
    return-object p0
.end method

.method public build()Lcom/avos/avoscloud/okhttp/RequestBody;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/avos/avoscloud/okhttp/FormEncodingBuilder;->CONTENT_TYPE:Lcom/avos/avoscloud/okhttp/MediaType;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/FormEncodingBuilder;->content:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okio/Buffer;->snapshot()Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/RequestBody;->create(Lcom/avos/avoscloud/okhttp/MediaType;Lcom/avos/avoscloud/okio/ByteString;)Lcom/avos/avoscloud/okhttp/RequestBody;

    move-result-object v0

    return-object v0
.end method
