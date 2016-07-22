.class public final enum Lcom/artitk/licensefragment/model/LicenseType;
.super Ljava/lang/Enum;
.source "LicenseType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/artitk/licensefragment/model/LicenseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/artitk/licensefragment/model/LicenseType;

.field public static final enum APACHE_LICENSE_20:Lcom/artitk/licensefragment/model/LicenseType;

.field public static final enum BSD_2_CLAUSE:Lcom/artitk/licensefragment/model/LicenseType;

.field public static final enum BSD_3_CLAUSE:Lcom/artitk/licensefragment/model/LicenseType;

.field public static final enum CUSTOM_LICENSE:Lcom/artitk/licensefragment/model/LicenseType;

.field public static final enum EPL_10:Lcom/artitk/licensefragment/model/LicenseType;

.field public static final enum GPL_30:Lcom/artitk/licensefragment/model/LicenseType;

.field public static final enum MIT_LICENSE:Lcom/artitk/licensefragment/model/LicenseType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/artitk/licensefragment/model/LicenseType;

    const-string v1, "APACHE_LICENSE_20"

    invoke-direct {v0, v1, v3}, Lcom/artitk/licensefragment/model/LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artitk/licensefragment/model/LicenseType;->APACHE_LICENSE_20:Lcom/artitk/licensefragment/model/LicenseType;

    .line 10
    new-instance v0, Lcom/artitk/licensefragment/model/LicenseType;

    const-string v1, "BSD_3_CLAUSE"

    invoke-direct {v0, v1, v4}, Lcom/artitk/licensefragment/model/LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artitk/licensefragment/model/LicenseType;->BSD_3_CLAUSE:Lcom/artitk/licensefragment/model/LicenseType;

    .line 11
    new-instance v0, Lcom/artitk/licensefragment/model/LicenseType;

    const-string v1, "BSD_2_CLAUSE"

    invoke-direct {v0, v1, v5}, Lcom/artitk/licensefragment/model/LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artitk/licensefragment/model/LicenseType;->BSD_2_CLAUSE:Lcom/artitk/licensefragment/model/LicenseType;

    .line 12
    new-instance v0, Lcom/artitk/licensefragment/model/LicenseType;

    const-string v1, "GPL_30"

    invoke-direct {v0, v1, v6}, Lcom/artitk/licensefragment/model/LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artitk/licensefragment/model/LicenseType;->GPL_30:Lcom/artitk/licensefragment/model/LicenseType;

    .line 13
    new-instance v0, Lcom/artitk/licensefragment/model/LicenseType;

    const-string v1, "MIT_LICENSE"

    invoke-direct {v0, v1, v7}, Lcom/artitk/licensefragment/model/LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artitk/licensefragment/model/LicenseType;->MIT_LICENSE:Lcom/artitk/licensefragment/model/LicenseType;

    .line 14
    new-instance v0, Lcom/artitk/licensefragment/model/LicenseType;

    const-string v1, "EPL_10"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/artitk/licensefragment/model/LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artitk/licensefragment/model/LicenseType;->EPL_10:Lcom/artitk/licensefragment/model/LicenseType;

    .line 16
    new-instance v0, Lcom/artitk/licensefragment/model/LicenseType;

    const-string v1, "CUSTOM_LICENSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/artitk/licensefragment/model/LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artitk/licensefragment/model/LicenseType;->CUSTOM_LICENSE:Lcom/artitk/licensefragment/model/LicenseType;

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/artitk/licensefragment/model/LicenseType;

    sget-object v1, Lcom/artitk/licensefragment/model/LicenseType;->APACHE_LICENSE_20:Lcom/artitk/licensefragment/model/LicenseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/artitk/licensefragment/model/LicenseType;->BSD_3_CLAUSE:Lcom/artitk/licensefragment/model/LicenseType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/artitk/licensefragment/model/LicenseType;->BSD_2_CLAUSE:Lcom/artitk/licensefragment/model/LicenseType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/artitk/licensefragment/model/LicenseType;->GPL_30:Lcom/artitk/licensefragment/model/LicenseType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/artitk/licensefragment/model/LicenseType;->MIT_LICENSE:Lcom/artitk/licensefragment/model/LicenseType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/artitk/licensefragment/model/LicenseType;->EPL_10:Lcom/artitk/licensefragment/model/LicenseType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/artitk/licensefragment/model/LicenseType;->CUSTOM_LICENSE:Lcom/artitk/licensefragment/model/LicenseType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/artitk/licensefragment/model/LicenseType;->$VALUES:[Lcom/artitk/licensefragment/model/LicenseType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/artitk/licensefragment/model/LicenseType;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/artitk/licensefragment/model/LicenseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/artitk/licensefragment/model/LicenseType;

    return-object v0
.end method

.method public static values()[Lcom/artitk/licensefragment/model/LicenseType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/artitk/licensefragment/model/LicenseType;->$VALUES:[Lcom/artitk/licensefragment/model/LicenseType;

    invoke-virtual {v0}, [Lcom/artitk/licensefragment/model/LicenseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artitk/licensefragment/model/LicenseType;

    return-object v0
.end method
