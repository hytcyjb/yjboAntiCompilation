.class public final enum Lcom/alibaba/fastjson/serializer/SerializerFeature;
.super Ljava/lang/Enum;
.source "SerializerFeature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/fastjson/serializer/SerializerFeature;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum DisableCheckSpecialChar:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field private static final synthetic ENUM$VALUES:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "QuoteFieldNames"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 23
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "UseSingleQuotes"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 26
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 27
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "WriteMapNullValue"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 30
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 31
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "WriteEnumUsingToString"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 35
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "WriteEnumUsingName"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 39
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "UseISO8601DateFormat"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 43
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "WriteNullListAsEmpty"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 47
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "WriteNullStringAsEmpty"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 50
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 51
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "WriteNullNumberAsZero"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 54
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 55
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "WriteNullBooleanAsFalse"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 58
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 59
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "SkipTransientField"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 62
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 63
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "SortField"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 66
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 67
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "WriteTabAsSpecial"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 71
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 72
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "PrettyFormat"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 75
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 76
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "WriteClassName"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 81
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "DisableCircularReferenceDetect"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 84
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 86
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "WriteSlashAsSpecial"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 89
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 91
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "BrowserCompatible"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 94
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 96
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "WriteDateUseDateFormat"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 99
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 101
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "NotWriteRootClassName"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 104
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 106
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "DisableCheckSpecialChar"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 109
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCheckSpecialChar:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 111
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "BeanToArray"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 114
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 116
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "WriteNonStringKeyAsString"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 119
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 121
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "NotWriteDefaultValue"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 124
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 126
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v1, "BrowserSecure"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    .line 129
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 21
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCheckSpecialChar:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->ENUM$VALUES:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 134
    return-void
.end method

.method public static config(ILcom/alibaba/fastjson/serializer/SerializerFeature;Z)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    if-eqz p2, :cond_0

    .line 154
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v0

    or-int/2addr v0, p0

    .line 159
    :goto_0
    return v0

    .line 156
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p0

    goto :goto_0
.end method

.method public static isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v0

    .line 149
    and-int v1, p0, v0

    if-nez v1, :cond_0

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 163
    if-nez p0, :cond_1

    .line 173
    :cond_0
    return v0

    .line 169
    :cond_1
    array-length v3, p0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, p0, v1

    .line 170
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v2

    or-int/2addr v2, v0

    .line 169
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->ENUM$VALUES:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    array-length v1, v0

    new-array v2, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getMask()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    return v0
.end method
