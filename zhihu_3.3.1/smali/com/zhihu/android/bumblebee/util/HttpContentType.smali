.class public final enum Lcom/zhihu/android/bumblebee/util/HttpContentType;
.super Ljava/lang/Enum;
.source "HttpContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zhihu/android/bumblebee/util/HttpContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zhihu/android/bumblebee/util/HttpContentType;

.field public static final enum JSON_HTTP:Lcom/zhihu/android/bumblebee/util/HttpContentType;

.field public static final enum MULTIPART_FORM_DATA:Lcom/zhihu/android/bumblebee/util/HttpContentType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum OCTET_STREAM:Lcom/zhihu/android/bumblebee/util/HttpContentType;

.field public static final enum PROTO:Lcom/zhihu/android/bumblebee/util/HttpContentType;

.field public static final enum URL_ENCODED:Lcom/zhihu/android/bumblebee/util/HttpContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/zhihu/android/bumblebee/util/HttpContentType;

    const-string v1, "URL_ENCODED"

    invoke-direct {v0, v1, v2}, Lcom/zhihu/android/bumblebee/util/HttpContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/bumblebee/util/HttpContentType;->URL_ENCODED:Lcom/zhihu/android/bumblebee/util/HttpContentType;

    .line 25
    new-instance v0, Lcom/zhihu/android/bumblebee/util/HttpContentType;

    const-string v1, "JSON_HTTP"

    invoke-direct {v0, v1, v3}, Lcom/zhihu/android/bumblebee/util/HttpContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/bumblebee/util/HttpContentType;->JSON_HTTP:Lcom/zhihu/android/bumblebee/util/HttpContentType;

    .line 27
    new-instance v0, Lcom/zhihu/android/bumblebee/util/HttpContentType;

    const-string v1, "OCTET_STREAM"

    invoke-direct {v0, v1, v4}, Lcom/zhihu/android/bumblebee/util/HttpContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/bumblebee/util/HttpContentType;->OCTET_STREAM:Lcom/zhihu/android/bumblebee/util/HttpContentType;

    .line 29
    new-instance v0, Lcom/zhihu/android/bumblebee/util/HttpContentType;

    const-string v1, "PROTO"

    invoke-direct {v0, v1, v5}, Lcom/zhihu/android/bumblebee/util/HttpContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/bumblebee/util/HttpContentType;->PROTO:Lcom/zhihu/android/bumblebee/util/HttpContentType;

    .line 31
    new-instance v0, Lcom/zhihu/android/bumblebee/util/HttpContentType;

    const-string v1, "MULTIPART_FORM_DATA"

    invoke-direct {v0, v1, v6}, Lcom/zhihu/android/bumblebee/util/HttpContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/bumblebee/util/HttpContentType;->MULTIPART_FORM_DATA:Lcom/zhihu/android/bumblebee/util/HttpContentType;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zhihu/android/bumblebee/util/HttpContentType;

    sget-object v1, Lcom/zhihu/android/bumblebee/util/HttpContentType;->URL_ENCODED:Lcom/zhihu/android/bumblebee/util/HttpContentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zhihu/android/bumblebee/util/HttpContentType;->JSON_HTTP:Lcom/zhihu/android/bumblebee/util/HttpContentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zhihu/android/bumblebee/util/HttpContentType;->OCTET_STREAM:Lcom/zhihu/android/bumblebee/util/HttpContentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zhihu/android/bumblebee/util/HttpContentType;->PROTO:Lcom/zhihu/android/bumblebee/util/HttpContentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zhihu/android/bumblebee/util/HttpContentType;->MULTIPART_FORM_DATA:Lcom/zhihu/android/bumblebee/util/HttpContentType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/zhihu/android/bumblebee/util/HttpContentType;->$VALUES:[Lcom/zhihu/android/bumblebee/util/HttpContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zhihu/android/bumblebee/util/HttpContentType;
    .locals 1
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/zhihu/android/bumblebee/util/HttpContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/bumblebee/util/HttpContentType;

    return-object v0
.end method

.method public static values()[Lcom/zhihu/android/bumblebee/util/HttpContentType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/zhihu/android/bumblebee/util/HttpContentType;->$VALUES:[Lcom/zhihu/android/bumblebee/util/HttpContentType;

    invoke-virtual {v0}, [Lcom/zhihu/android/bumblebee/util/HttpContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zhihu/android/bumblebee/util/HttpContentType;

    return-object v0
.end method
