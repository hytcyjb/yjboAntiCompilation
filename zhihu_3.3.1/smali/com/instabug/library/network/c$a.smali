.class public final enum Lcom/instabug/library/network/c$a;
.super Ljava/lang/Enum;
.source "WebServiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/network/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instabug/library/network/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instabug/library/network/c$a;

.field public static final enum b:Lcom/instabug/library/network/c$a;

.field public static final enum c:Lcom/instabug/library/network/c$a;

.field public static final enum d:Lcom/instabug/library/network/c$a;

.field public static final enum e:Lcom/instabug/library/network/c$a;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/instabug/library/network/c$a;

    const-string v1, "ReportIssue"

    const-string v2, "create_bug"

    invoke-direct {v0, v1, v3, v2}, Lcom/instabug/library/network/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/c$a;->a:Lcom/instabug/library/network/c$a;

    new-instance v0, Lcom/instabug/library/network/c$a;

    const-string v1, "UploadImage"

    const-string v2, "add_screenshot"

    invoke-direct {v0, v1, v4, v2}, Lcom/instabug/library/network/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/c$a;->b:Lcom/instabug/library/network/c$a;

    new-instance v0, Lcom/instabug/library/network/c$a;

    const-string v1, "AppSettings"

    const-string v2, "features"

    invoke-direct {v0, v1, v5, v2}, Lcom/instabug/library/network/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/c$a;->c:Lcom/instabug/library/network/c$a;

    .line 21
    new-instance v0, Lcom/instabug/library/network/c$a;

    const-string v1, "RegisterDevice"

    const-string v2, "register_device"

    invoke-direct {v0, v1, v6, v2}, Lcom/instabug/library/network/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/c$a;->d:Lcom/instabug/library/network/c$a;

    new-instance v0, Lcom/instabug/library/network/c$a;

    const-string v1, "UploadFile"

    const-string v2, "add_file"

    invoke-direct {v0, v1, v7, v2}, Lcom/instabug/library/network/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/c$a;->e:Lcom/instabug/library/network/c$a;

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/instabug/library/network/c$a;

    sget-object v1, Lcom/instabug/library/network/c$a;->a:Lcom/instabug/library/network/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instabug/library/network/c$a;->b:Lcom/instabug/library/network/c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instabug/library/network/c$a;->c:Lcom/instabug/library/network/c$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instabug/library/network/c$a;->d:Lcom/instabug/library/network/c$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/instabug/library/network/c$a;->e:Lcom/instabug/library/network/c$a;

    aput-object v1, v0, v7

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/instabug/library/network/c$a;->f:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instabug/library/network/c$a;->f:Ljava/lang/String;

    return-object v0
.end method
