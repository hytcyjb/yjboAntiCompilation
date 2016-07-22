.class public final enum Lcom/didi/frame/business/InputType;
.super Ljava/lang/Enum;
.source "InputType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/business/InputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/business/InputType;

.field public static final enum Text:Lcom/didi/frame/business/InputType;

.field public static final enum Voice:Lcom/didi/frame/business/InputType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/didi/frame/business/InputType;

    const-string v1, "Voice"

    invoke-direct {v0, v1, v2}, Lcom/didi/frame/business/InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/frame/business/InputType;->Voice:Lcom/didi/frame/business/InputType;

    new-instance v0, Lcom/didi/frame/business/InputType;

    const-string v1, "Text"

    invoke-direct {v0, v1, v3}, Lcom/didi/frame/business/InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/didi/frame/business/InputType;

    sget-object v1, Lcom/didi/frame/business/InputType;->Voice:Lcom/didi/frame/business/InputType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/didi/frame/business/InputType;->$VALUES:[Lcom/didi/frame/business/InputType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/business/InputType;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/didi/frame/business/InputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/business/InputType;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/business/InputType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/didi/frame/business/InputType;->$VALUES:[Lcom/didi/frame/business/InputType;

    invoke-virtual {v0}, [Lcom/didi/frame/business/InputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/business/InputType;

    return-object v0
.end method


# virtual methods
.method public getIndex(Lcom/didi/frame/business/InputType;)I
    .locals 3
    .parameter "t"

    .prologue
    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, i:I
    invoke-static {}, Lcom/didi/frame/business/InputType;->values()[Lcom/didi/frame/business/InputType;

    move-result-object v1

    .line 16
    .local v1, typeArray:[Lcom/didi/frame/business/InputType;
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 17
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_1

    .line 20
    :cond_0
    return v0

    .line 16
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndexValue()I
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p0}, Lcom/didi/frame/business/InputType;->getIndex(Lcom/didi/frame/business/InputType;)I

    move-result v0

    return v0
.end method
