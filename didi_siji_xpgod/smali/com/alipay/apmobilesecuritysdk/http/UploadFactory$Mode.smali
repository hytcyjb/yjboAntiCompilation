.class public final enum Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/apmobilesecuritysdk/http/UploadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;

.field public static final enum RPC:Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;

.field public static final enum RPC_WALLET:Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;

    const-string v1, "RPC"

    invoke-direct {v0, v1, v2}, Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;->RPC:Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;

    const-string v1, "RPC_WALLET"

    invoke-direct {v0, v1, v3}, Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;->RPC_WALLET:Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;

    sget-object v1, Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;->RPC:Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;->RPC_WALLET:Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;->$VALUES:[Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;
    .locals 1

    const-class v0, Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;

    return-object v0
.end method

.method public static values()[Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;
    .locals 1

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;->$VALUES:[Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;

    invoke-virtual {v0}, [Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;

    return-object v0
.end method
