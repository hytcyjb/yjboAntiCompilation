.class public final enum Lcom/instabug/library/Instabug$SdkThemingMode;
.super Ljava/lang/Enum;
.source "Instabug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/Instabug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdkThemingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instabug/library/Instabug$SdkThemingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/Instabug$SdkThemingMode;

.field public static final enum APPCOMPAT_V7:Lcom/instabug/library/Instabug$SdkThemingMode;

.field public static final enum APP_COMPAT_MATERIAL:Lcom/instabug/library/Instabug$SdkThemingMode;

.field public static final enum AUTO:Lcom/instabug/library/Instabug$SdkThemingMode;

.field public static final enum MANUAL:Lcom/instabug/library/Instabug$SdkThemingMode;

.field public static final enum MIN_SDK_14:Lcom/instabug/library/Instabug$SdkThemingMode;

.field public static final enum SHERLOCK:Lcom/instabug/library/Instabug$SdkThemingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/instabug/library/Instabug$SdkThemingMode;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/Instabug$SdkThemingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Instabug$SdkThemingMode;->AUTO:Lcom/instabug/library/Instabug$SdkThemingMode;

    new-instance v0, Lcom/instabug/library/Instabug$SdkThemingMode;

    const-string v1, "MANUAL"

    invoke-direct {v0, v1, v4}, Lcom/instabug/library/Instabug$SdkThemingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Instabug$SdkThemingMode;->MANUAL:Lcom/instabug/library/Instabug$SdkThemingMode;

    new-instance v0, Lcom/instabug/library/Instabug$SdkThemingMode;

    const-string v1, "MIN_SDK_14"

    invoke-direct {v0, v1, v5}, Lcom/instabug/library/Instabug$SdkThemingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Instabug$SdkThemingMode;->MIN_SDK_14:Lcom/instabug/library/Instabug$SdkThemingMode;

    new-instance v0, Lcom/instabug/library/Instabug$SdkThemingMode;

    const-string v1, "APPCOMPAT_V7"

    invoke-direct {v0, v1, v6}, Lcom/instabug/library/Instabug$SdkThemingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Instabug$SdkThemingMode;->APPCOMPAT_V7:Lcom/instabug/library/Instabug$SdkThemingMode;

    new-instance v0, Lcom/instabug/library/Instabug$SdkThemingMode;

    const-string v1, "APP_COMPAT_MATERIAL"

    invoke-direct {v0, v1, v7}, Lcom/instabug/library/Instabug$SdkThemingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Instabug$SdkThemingMode;->APP_COMPAT_MATERIAL:Lcom/instabug/library/Instabug$SdkThemingMode;

    new-instance v0, Lcom/instabug/library/Instabug$SdkThemingMode;

    const-string v1, "SHERLOCK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/Instabug$SdkThemingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Instabug$SdkThemingMode;->SHERLOCK:Lcom/instabug/library/Instabug$SdkThemingMode;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/instabug/library/Instabug$SdkThemingMode;

    sget-object v1, Lcom/instabug/library/Instabug$SdkThemingMode;->AUTO:Lcom/instabug/library/Instabug$SdkThemingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instabug/library/Instabug$SdkThemingMode;->MANUAL:Lcom/instabug/library/Instabug$SdkThemingMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instabug/library/Instabug$SdkThemingMode;->MIN_SDK_14:Lcom/instabug/library/Instabug$SdkThemingMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instabug/library/Instabug$SdkThemingMode;->APPCOMPAT_V7:Lcom/instabug/library/Instabug$SdkThemingMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/instabug/library/Instabug$SdkThemingMode;->APP_COMPAT_MATERIAL:Lcom/instabug/library/Instabug$SdkThemingMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/instabug/library/Instabug$SdkThemingMode;->SHERLOCK:Lcom/instabug/library/Instabug$SdkThemingMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/instabug/library/Instabug$SdkThemingMode;->$VALUES:[Lcom/instabug/library/Instabug$SdkThemingMode;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/Instabug$SdkThemingMode;
    .locals 1
    .parameter

    .prologue
    .line 50
    const-class v0, Lcom/instabug/library/Instabug$SdkThemingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/Instabug$SdkThemingMode;

    return-object v0
.end method

.method public static values()[Lcom/instabug/library/Instabug$SdkThemingMode;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/instabug/library/Instabug$SdkThemingMode;->$VALUES:[Lcom/instabug/library/Instabug$SdkThemingMode;

    invoke-virtual {v0}, [Lcom/instabug/library/Instabug$SdkThemingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/Instabug$SdkThemingMode;

    return-object v0
.end method
