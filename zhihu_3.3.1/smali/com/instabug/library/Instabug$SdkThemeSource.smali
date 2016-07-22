.class public final enum Lcom/instabug/library/Instabug$SdkThemeSource;
.super Ljava/lang/Enum;
.source "Instabug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/Instabug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdkThemeSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instabug/library/Instabug$SdkThemeSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/Instabug$SdkThemeSource;

.field public static final enum CALLER_THEME:Lcom/instabug/library/Instabug$SdkThemeSource;

.field public static final enum OWN_THEME:Lcom/instabug/library/Instabug$SdkThemeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/instabug/library/Instabug$SdkThemeSource;

    const-string v1, "OWN_THEME"

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/Instabug$SdkThemeSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Instabug$SdkThemeSource;->OWN_THEME:Lcom/instabug/library/Instabug$SdkThemeSource;

    .line 76
    new-instance v0, Lcom/instabug/library/Instabug$SdkThemeSource;

    const-string v1, "CALLER_THEME"

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/Instabug$SdkThemeSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Instabug$SdkThemeSource;->CALLER_THEME:Lcom/instabug/library/Instabug$SdkThemeSource;

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instabug/library/Instabug$SdkThemeSource;

    sget-object v1, Lcom/instabug/library/Instabug$SdkThemeSource;->OWN_THEME:Lcom/instabug/library/Instabug$SdkThemeSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instabug/library/Instabug$SdkThemeSource;->CALLER_THEME:Lcom/instabug/library/Instabug$SdkThemeSource;

    aput-object v1, v0, v3

    sput-object v0, Lcom/instabug/library/Instabug$SdkThemeSource;->$VALUES:[Lcom/instabug/library/Instabug$SdkThemeSource;

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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/Instabug$SdkThemeSource;
    .locals 1
    .parameter

    .prologue
    .line 68
    const-class v0, Lcom/instabug/library/Instabug$SdkThemeSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/Instabug$SdkThemeSource;

    return-object v0
.end method

.method public static values()[Lcom/instabug/library/Instabug$SdkThemeSource;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/instabug/library/Instabug$SdkThemeSource;->$VALUES:[Lcom/instabug/library/Instabug$SdkThemeSource;

    invoke-virtual {v0}, [Lcom/instabug/library/Instabug$SdkThemeSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/Instabug$SdkThemeSource;

    return-object v0
.end method
