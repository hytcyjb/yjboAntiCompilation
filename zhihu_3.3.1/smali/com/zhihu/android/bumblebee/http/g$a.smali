.class public final Lcom/zhihu/android/bumblebee/http/g$a;
.super Ljava/lang/Object;
.source "MultipartFormDataContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/android/bumblebee/http/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lcom/google/api/client/http/HttpContent;

.field private d:Lcom/google/api/client/http/HttpHeaders;

.field private e:Lcom/google/api/client/http/HttpEncoding;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpContent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/zhihu/android/bumblebee/http/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpHeaders;Lcom/google/api/client/http/HttpContent;)V

    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpHeaders;Lcom/google/api/client/http/HttpContent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/zhihu/android/bumblebee/http/g$a;->a:Ljava/lang/String;

    .line 207
    iput-object p2, p0, Lcom/zhihu/android/bumblebee/http/g$a;->b:Ljava/lang/String;

    .line 209
    invoke-virtual {p0, p3}, Lcom/zhihu/android/bumblebee/http/g$a;->a(Lcom/google/api/client/http/HttpHeaders;)Lcom/zhihu/android/bumblebee/http/g$a;

    .line 210
    invoke-virtual {p0, p4}, Lcom/zhihu/android/bumblebee/http/g$a;->a(Lcom/google/api/client/http/HttpContent;)Lcom/zhihu/android/bumblebee/http/g$a;

    .line 211
    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/client/http/HttpContent;)Lcom/zhihu/android/bumblebee/http/g$a;
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/zhihu/android/bumblebee/http/g$a;->c:Lcom/google/api/client/http/HttpContent;

    .line 232
    return-object p0
.end method

.method public a(Lcom/google/api/client/http/HttpHeaders;)Lcom/zhihu/android/bumblebee/http/g$a;
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/zhihu/android/bumblebee/http/g$a;->d:Lcom/google/api/client/http/HttpHeaders;

    .line 244
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/g$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/g$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/google/api/client/http/HttpContent;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/g$a;->c:Lcom/google/api/client/http/HttpContent;

    return-object v0
.end method

.method public d()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/g$a;->d:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public e()Lcom/google/api/client/http/HttpEncoding;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/g$a;->e:Lcom/google/api/client/http/HttpEncoding;

    return-object v0
.end method
