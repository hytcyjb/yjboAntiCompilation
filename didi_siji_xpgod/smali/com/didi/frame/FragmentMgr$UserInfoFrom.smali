.class public final enum Lcom/didi/frame/FragmentMgr$UserInfoFrom;
.super Ljava/lang/Enum;
.source "FragmentMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/FragmentMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserInfoFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/FragmentMgr$UserInfoFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/FragmentMgr$UserInfoFrom;

.field public static final enum MAP:Lcom/didi/frame/FragmentMgr$UserInfoFrom;

.field public static final enum MENU:Lcom/didi/frame/FragmentMgr$UserInfoFrom;

.field public static final enum WEB:Lcom/didi/frame/FragmentMgr$UserInfoFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    new-instance v0, Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    const-string v1, "MENU"

    invoke-direct {v0, v1, v2}, Lcom/didi/frame/FragmentMgr$UserInfoFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/frame/FragmentMgr$UserInfoFrom;->MENU:Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    new-instance v0, Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    const-string v1, "WEB"

    invoke-direct {v0, v1, v3}, Lcom/didi/frame/FragmentMgr$UserInfoFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/frame/FragmentMgr$UserInfoFrom;->WEB:Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    new-instance v0, Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v4}, Lcom/didi/frame/FragmentMgr$UserInfoFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/frame/FragmentMgr$UserInfoFrom;->MAP:Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    .line 154
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    sget-object v1, Lcom/didi/frame/FragmentMgr$UserInfoFrom;->MENU:Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/frame/FragmentMgr$UserInfoFrom;->WEB:Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/frame/FragmentMgr$UserInfoFrom;->MAP:Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    aput-object v1, v0, v4

    sput-object v0, Lcom/didi/frame/FragmentMgr$UserInfoFrom;->$VALUES:[Lcom/didi/frame/FragmentMgr$UserInfoFrom;

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
    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/FragmentMgr$UserInfoFrom;
    .locals 1
    .parameter "name"

    .prologue
    .line 154
    const-class v0, Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/FragmentMgr$UserInfoFrom;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/didi/frame/FragmentMgr$UserInfoFrom;->$VALUES:[Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    invoke-virtual {v0}, [Lcom/didi/frame/FragmentMgr$UserInfoFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    return-object v0
.end method
